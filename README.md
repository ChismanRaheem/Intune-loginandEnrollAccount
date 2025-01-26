1. loginAndEnrollAccount (App not using MSAL) 
Apps that don't sign in the user using MSAL can still receive app protection policy from the Intune MAM service by calling the API to have the SDK handle that authentication. Apps should use this technique when they haven't authenticated a user with Azure AD but still need to retrieve app protection policy to help protect data. To do this, the application can call the loginAndEnrollAccount method on the IntuneMAMEnrollmentManager instance: 
     IntuneMAMEnrollmentManager.instance().loginAndEnrollAccount() 

