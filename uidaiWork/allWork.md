## Native to Flutter Bridge
 Implemented a cross-platform application as a Proof of Concept (POC) for establishing a Native to Flutter bridge. The application's functionality was to display the PID block of captured biometric in Flutter UI in every platform.

- Completed the work to display the captured PID block of fingerprint passed from backend (Java) through the method channel to the frontend (Flutter UI).
- Endeavored to retrieve the package or driver name from the connected RD device, subsequently recognizing the necessity for assistance from vendors to obtain this information.

## Face RD
 The primary goal was to write the test cases to ensure that the application functions optimally under various environmental conditions.

- Acquired proficiency in basic test-driven development and expanded my understanding of diverse technologies and frameworks for testing Java applications, such as JUnit and Mockito, through an - learning platform.
- Authored few test cases for specific classes within utils and telemetry modules.

## Flutter Oauth application
 Developed a Flutter application as a Proof of Concept (POC) to showcase the OAuth functionality, aimed at enabling genuine customers to access the system while deterring malicious and fraudulent entities. The primary objective of this POC was to authenticate users with their credentials and obtain an access token for accessing the available resources.

- Deepened my comprehension of OAuth 2.0, including its technical intricacies and advantages of using it in software development, through extensive research on the internet.
- Integrated the functionality to initiate the web browser for user authentication from the login screen provided by the OAuth provider.
- Used OKTA as the OAuth provider to manage all authentication and identity- related operations.

## Universal Client
 Implemented the end-to-end flow for Adult Enrollment

## Universal Client – Foreign resident enrolment

- Designed and implemented the foreign resident enrollment flow in the Universal Client, aligning it with the legacy ECMP Client and incorporating business team recommendations throughout the development process.
- Performed manual end-to-end testing to ensure the Foreign Resident enrollment flow functions correctly in the Universal Client.
- Handled multiple tasks and resolved numerous bugs identified across various workflows during staging testing.

## Universal Client – Indian Adult enrolment

- Developed the Indian Adult Enrollment workflow within the Universal Client, maintaining consistency with the legacy ECMP Client and incorporating iterative feedback from the business team throughout development.
- Executed thorough manual end-to-end testing to verify the integrity and functionality of both the Foreign Resident and Indian Adult Enrollment workflows in the Universal Client.
- Oversaw diverse tasks and efficiently resolved a variety of bugs encountered across multiple workflows during staging environment testing for both enrollment processes.
- Played a key role in identifying the root cause of the 'Java Heap Space Exceeded' error encountered during document scanning, which involved in-depth analysis using profiling tools such as JVisualVM and JProfiler to evaluate the application's memory management.

## Universal Client – NRI resident enrolment

- Designed and implemented the NRI enrollment flow in the Universal Client, integrating both Indian and foreign address functionalities. Additionally, incorporated feedback and revisions provided by the business team throughout the development process.
- Conducted manual testing for around seven flows in the Universal Client, ensuring the correctness of happy flows for Adult, Foreign, and NRI residents.
- Addressed numerous tasks and resolved a multitude of bugs encountered across all workflows throughout the project's progression.

## Universal Client – Child Below 5 and Between 5 and 18 enrolment

- Implemented a Document-based enrollment process for Children and Minors, enabling the enrollment of orphaned children without a direct relative acting as the Head of Family representative.
- Developed the Head- of-Family (HOF)-based enrollment process for children and minors, allowing enrollment with an HOF representative who can be a parent
(father or mother) or a guardian. The contact details of the child or minor are inherited from the HOF and other relation details can also be filled based on specific conditions.
- Integrated the BRN flow into the child enrollment process by retrieving child details from the BRN service using the BRN number and state, and dynamically populating the information in the user interface.
- Implemented functionality allowing residents to choose between populating the child's contact details with the Head- of-Family's information or entering new contact details.
- Conducted comprehensive manual testing of approximately 22 flows, verifying their correctness, completeness, and functionality across various parameters, and identifying any potential UI bugs before transferring them to the staging team.
- Resolved all bugs and issues reported by the staging team and implemented updates suggested by the business team throughout the process.


## Universal Client – Passport Integration

- Updated the Digilocker popup UI to include functionality for verifiable documents (currently limited to Passport Document). This allows users to input document details, attach the document, and submit it for verification through the Document service.
- Utilized regex patterns to validate the correct format of inputted values, particularly because of the date fields, and conducted thorough testing of the entire functionality to ensure its accuracy and reliability.
- Contributed to the integration of a backend endpoint for retrieving verifiable document metadata, eliminating the need for hardcoding on the client side.

## Universal Client - Demographic and Biometric Update Flows

- Contributed to the implementation of the complete Demographic and Biometric Update flows, including the migration to the new Universal Client user interface from the legacy ECMP UI.
- Conducted thorough manual testing of each update flow, ensuring correctness, completeness, and the identification of any UI issues within the happy flows.
 
 
 ## Client Automation
 
- Assisted in writing test cases for the complete happy flow of the Mobile Update flows in the client automation, reducing the need for repetitive manual testing of each UI flow and saving time through automation.
- Developed code to enhance testing capabilities for additional functionalities being concurrently developed in the Universal Client.
- Authored over 300 test cases covering diverse user flows in the Universal Client to ensure robust performance and reliability in the production environment.

## Production Support

- Managed production bugs and addressed numerous inquiries from operators and center managers regarding the functionality of the Universal Client, providing 24/7 support.
- Thoroughly investigated a range of issues and exceptions occurring in the Universal Client production environment by analyzing Metabase logs and meticulously reviewing both frontend and backend logs from Elastic to identify root causes.