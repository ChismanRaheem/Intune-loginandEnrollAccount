# Intune IOS Application
## loginandEnrollAccount (App not using MSAL) 
#### Apps that don't sign in the user using MSAL can still receive app protection policy from the Intune MAM service by calling the API to have the SDK handle that authentication. Apps should use this technique when they haven't authenticated a user with Azure AD but still need to retrieve app protection policy to help protect data. To do this, the application can call the loginAndEnrollAccount method on the IntuneMAMEnrollmentManager instance: 
     IntuneMAMEnrollmentManager.instance().loginAndEnrollAccount() 
> [!NOTE]
> : Your application will always require a App Protection Policy when using this method.<br>
> ref: How to create a APP policy -https://learn.microsoft.com/en-us/mem/intune/developer/app-sdk-ios-phase3#first-policy-application-test

<br> :thought_balloon:	More About Apps that don't use ADAL or MSAL
<br>
Ref:
<br> 
https://learn.microsoft.com/en-us/mem/intune/developer/app-sdk-ios-phase3#apps-that-dont-use-adal-or-msal
<br>
<br>
<table aria-label="Table 3" class="table table-sm margin-top-none">
<thead>
<tr>
<th>Setting</th>
<th>Type</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr>

<td>[Specifies whether the app should attempt to automatically enroll on launch if an existing managed identity is detected and it has not yet done so. Defaults to NO. <br><br> Note: If no managed identity is found or no valid token for the identity is available in the ADAL/MSAL cache, the enrollment attempt will silently fail without prompting for credentials, unless the app has also set MAMPolicyRequired to YES.](https://learn.microsoft.com/en-us/mem/intune/developer/app-sdk-ios-phase3#apps-that-dont-use-adal-or-msal)</td>
</tr>

</tbody>
</table>
