# ETL-Check-In-App
ETL Check-In Application designed for iPad running iOS 9, for lab visitors who forgot their i-Card

V1.0
- App is storyboard-based: segues perform transitions between view controllers when a button is pressed.
- Text field on main view controller checks for UIN (only 9 characters) as valid input. When "submit" is pressed:
  - If input is valid: send data (input and date of submission) via POST to Google Sheet on the ETL Gmail account, display accepted message
  - If input is invalid: display declined message
- A button will display with message after input is submitted, pressing button will display the main view controller

Future Implentations:
- Add sounds when buttons are pressed
- Merge Google Sheets with card reader Excel Sheet
- Add graphics
