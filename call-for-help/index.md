---
title: Apply for support
---

The target audience for the AIDA Data Hub Support function is the AIDA community. Inquiries from non-AIDA organizations are also welcome, and will be entertained best-effort within available resources [cf Prioritization](https://datahub.aida.scilifelab.se/support/#prioritization).

To get more information about our support service, see our [support page.](https://datahub.aida.scilifelab.se/support/)

\* = Required information

<div id="form-div" class="form-wrapper">
    <form id="submissionForm">
        <h3>Support Query</h3>
        <label for="title" class="form-label">Project title: * </label><br>
        <input type="text" id="title" name="title" class="form-control" style="width: 100%;" required/><br>    
        <label for="description" class="form-label">Description : *</label><br>
        <textarea id="description" name="description" rows="8" class="form-control" style="width: 100%;" required ></textarea>
      <br>
        <h3>Your contact details</h3>
        <label for="fullname" class="form-label">Your full name: *</label><br>
        <input type="text" id="fullname" name="fullname" class="form-control" required/><br>
        <label for="email" class="form-label">Your email: *</label><br>
        <input type="email" id="email" name="email" class="form-control" required/><br>
        <label for="piname" class="form-label">PI's name: *</label><br>
        <input type="text" id="piname" name="piname" class="form-control" required/><br>
        <label for="piemail" class="form-label">PI's email: *</label><br>
        <input type="email" id="piemail" name="piemail" class="form-control" required/><br>
        <br>
      <br>
      <div class="applicationform_agreement">
        <input type="checkbox" required/>
          <span> I agree to NBIS Support's 
            <a href="https://www.nbis.se/uploads/nbis_support_useragreement_f2c52d955b.pdf">user agreement</a>
          </span>
      </div>
    </form>
      <div class="form-group">
        <div class="form-group">
          <br><input type="button" value="Submit" class="btn btn-primary" onclick="validateForm()" style="color: white; background-color: #1e6bb8;">
        </div>
        <dialog id="dialogBox">
          <form method="dialog">
            <p>
              <div id="dialogMsg"></div>
            </p>
            <div>
              <button type="button" id="closeModal">Close</button>
            </div>
          </form>
        </dialog>
      </div>  
    <script>
      const ProjectId = "aida-data-hub-support";
      const TrackerId = 7; // Consultation
      const SKULD = "https://nbis.se";
      function validateForm() {
        // trigger built-in form validation errors
        const form = document.getElementById("submissionForm");
        if (!form.checkValidity()) {
          form.reportValidity();
          return false;
        } else {
          onSubmit(); // This line triggers the form submission if it's valid
          return true; // Always return true so that the form can proceed with submission
        }
      };
      /** create readmine issue and send it together with captcha token */
      async function onSubmit() {
        const fullname = document.getElementById("fullname").value;
        const piname = document.getElementById("piname").value;
        const piemail = document.getElementById("piemail").value;
        const email = document.getElementById("email").value;
        const issue = {
          project_id: ProjectId,
          status_id: "open",
          tracker_id: TrackerId,
          subject: document.getElementById("title").value,
          description: document.getElementById("description").value,
          // ids from the redmine db
          custom_fields: [
            { id: 13, name: "Name", value: `${fullname}` },
            { id: 5, name: "Principal Investigator", value: `${piname}` },
            {
              id: 18,
              name: "PI e-mail",
              value: piemail,
            },
            {
              id: 6,
              name: "Organization",
              value: "Other"
            },
          ],
        };    
        try {
        response = await fetch(`${SKULD}/proxy/issues.json`, {
          method: "POST",
          credentials: 'include',
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ issue: issue }),
        });
        } catch (error) {
          showUserMessage('An error occurred. Please try again.');
          return
        }
        if (!response.ok) {
          console.log('Redmine problem', response);
          showUserMessage('An error occurred. Please try again.');
        } else {
          const jsondata = await response.json()
          const issueId = jsondata["issue"]["id"]
          await setupWatcher(email, issueId);
          showUserMessage('Submission request successfully sent. Your issue number is '+ issueId);
          const form = document.getElementById("submissionForm");
          form.reset();
          }
      }
      /** send watcher request to redmine. Ignore failures. */
      async function setupWatcher(email, issueId){
          // set up user's email as watcher
          try {
            const responseW = await fetch(`${SKULD}/proxy/watchers.json?issue=${issueId}`, {
              method: "POST",
              credentials: 'include',
              headers: {
                "Content-Type": "application/json",
              },
              body: JSON.stringify({ watcher: { mails: email } }),
          }
            );
          if (!responseW.ok) {
            console.log('Redmine problem, no watcher added');
          }
          } catch (error) {
            console.log('Redmine problem, no watcher added');
          }
      }   
      /** show user message */
      function showUserMessage(msg) {
        const dialog = document.getElementById("dialogBox");
        const msgarea = document.getElementById("dialogMsg");
        msgarea.innerHTML = msg;
        dialog.showModal();
        const closeButton = document.getElementById("closeModal");
        closeButton.addEventListener("click", () => {
           dialog.close();
       });
      }   
    </script>
