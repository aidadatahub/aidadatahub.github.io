---
title: Apply for Data Access
---

To get more information about our support service, see our [support page.](https://datahub.aida.scilifelab.se/support/)

\* = Required information

<div id="form-div" class="form-wrapper">
  <form id="submissionForm">
    <h3>Data Access Query</h3>
    <label for="dataset-id" class="form-label">Dataset: *</label><br>
    <input type="text" id="dataset-id" name="dataset-id" class="form-control" style="width: 100%;" required/>
    <br>
    <label for="fullname" class="form-label">Fullname: *</label><br>
    <input type="text" id="fullname" name="fullname" class="form-control" style="width: 100%;" required/>
    <br>
    <label for="country" class="form-label">Country: *</label><br>
    <input type="text" id="country" name="country" class="form-control" style="width: 100%;" required/>
    <br>
    <label for="description" class="form-label">Brief description of planned activities : *</label><br>
    <textarea id="description" name="description" rows="8" class="form-control" style="width: 100%;" required ></textarea>
    <br><br>
    <div class="applicationform_agreement">
          <input type="checkbox" required/>
            <span> I agree to be included in  
              <a href="https://docs.google.com/spreadsheets/d/1fl2BwZJ4rivOKzOCy5pAnxU8N1CyoF86BTCnH-rBV04">the public record</a> of data sharing facilitated by AIDA.
              <br>
              (If "not", then only institution/department information will be included.) 
            </span>
        </div>
        <br>
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
      const TrackerId = 9; // Data Access Request
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