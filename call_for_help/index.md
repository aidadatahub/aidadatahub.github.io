---
title: Apply for support
---

The target audience for the AIDA Data Hub Support function is the AIDA community. Inquiries from non-AIDA organizations are also welcome, and will be entertained best-effort within available resources [cf Prioritization](https://datahub.aida.scilifelab.se/support/#prioritization).

To get more information about our support service, see our [support page.](https://datahub.aida.scilifelab.se/support/)

\* = Required information

<div id="form-div" class="form-wrapper">
    <form id="submissionForm">
      <fieldset>
      <fieldset>
        <h3>Support Query</h3>
        <label for="title" class="form-label">Project title: *</label><br>
        <input type="text" id="title" name="title" class="form-control" required/><br>    
        <label for="description" class="form-label">Description : *</label><br>
        <textarea id="description" name="description" rows="8" class="form-control" required ></textarea>
      </fieldset>
      <br>
      <fieldset>
        <h3>Principle investigator</h3>
        <label for="fname" class="form-label">First name: *</label><br>
        <input type="text" id="fname" name="fname" class="form-control" required/><br>
        <label for="lname" class="form-label">Last name: *</label><br>
        <input type="text" id="lname" name="lname" class="form-control" required/><br>
        <label for="email" class="form-label">Email: *</label><br>
        <input type="email" id="email" name="email" class="form-control" required/><br>
        <label for="institution" class="form-label">Organization: *</label><br>
        <input type="institution" id="institution" name="institution" class="form-control" required/><br>
        <br>
      </fieldset>
      <br>
      <fieldset>
        <h3>Your contact details</h3>
        <label for="fname" class="form-label">First name: *</label><br>
        <input type="text" id="fname" name="fname" class="form-control" required/><br>
        <label for="lname" class="form-label">Last name: *</label><br>
        <input type="text" id="lname" name="lname" class="form-control" required/><br>
        <label for="email" class="form-label">Email: *</label><br>
        <input type="email" id="email" name="email" class="form-control" required/><br>
        <br>
      </fieldset>
      <br>
      </fieldset>
      <div class="form-group">
      <div class="form-group">
      <br>
      <input type="button" value="Submit" class="btn btn-primary" onclick="validateForm()" style="color: black; background-color: #1e6bb8;">
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
      // the values below are from the Redmine Organization field
      // see redmine_url/custom_fields.json
      const organizations= [
        "UU",
        "GU",
        "HIS",
        "KI",
        "KTH",
        "LiU",
        "LU",
        "NRM",
        "ORU",
        "SciLifeLab",
        "SH",
        "SLU",
        "SNIC",
        "SU",
        "UmU",
        "LNU",
        "SH",
        "BILS",
        "Other"
      ];   
       const institutionList = document.getElementById("institution");
       organizations.forEach(function(org) {
            const optionElement = document.createElement("option");
            optionElement.value = org;
            optionElement.text = org;
            institutionList.appendChild(optionElement);
       });   
      // make sure the completion date is larger than today
      const completionDate = document.getElementById("completionDate");
      const minDate = new Date().toISOString().split('T')[0];
      completionDate.min = minDate;   
      /** manually trigger form validation (for usage with recaptcha) */
      function validateForm() {
        // mark submission type checkboxes as required when none of them is selected, to
        // trigger built-in form validation errors
        const requiredCheckboxes = document.querySelectorAll('[name="submissionType"]');
        const checkedCheckboxes = document.querySelectorAll('[name="submissionType"]:checked');
        if (checkedCheckboxes.length) {
          requiredCheckboxes.forEach((b) => b.removeAttribute('required'));
        } else {
          requiredCheckboxes.forEach((b) => b.setAttribute('required', 'required'));
        }
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
        const fname = document.getElementById("fname").value;
        const lname = document.getElementById("lname").value;
        const email = document.getElementById("email").value;
        const issue = {
          project_id: ProjectId,
          status_id: "open",
          tracker_id: TrackerId,
          subject: document.getElementById("title").value,
          description: document.getElementById("description").value,
          due_date: document.getElementById("completionDate").value,
          // ids from the redmine db
          custom_fields: [
            { id: 13, name: "Name", value: `${fname} ${lname}` },
            {
              id: 18,
              name: "PI-email",
              value: email,
            },
            {
              id: 6,
              name: "Organization",
              value: document.getElementById("institution").value,
            },
            {
              id: 25,
              name: "Type of data",
              value: document.querySelector(".submissionType:checked").value,
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
          const watchersURL = `${SKULD}/proxy/watchers.json?issue=${issueId}`;
          const body = JSON.stringify({ watcher: { mails: email } });
          const options = {
            headers: {
              "Content-Type": "application/json",
            },
            body: body,
            method: "POST",
            credentials: 'include',
          };
          try {
            const responseW = await fetch(watchersURL, options);
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
