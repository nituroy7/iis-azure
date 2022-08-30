Steps to configure the DevOps agent in a VM

1. Navigate to the Azure DevOps account
2. Go to "Pipelines->Environments"
3. Click "New Environment"
4. Fill up the VM name, choose resource as "Virtual machines" and click "Next" ![](./images/new_environment.png)
5. Select the Provider as "Generic Provider" and Operating System as "Windows" ![](./images/new_environment_2.png)
6. Click and copy the "Registration Script" from the displayed window to your clipboard. We will use this inside the VM.
7. Click "Close"
8. RDP and login into the VM
9. Create an user account inside the VM with the service account information.
    * Go to "Settings->Other people"
    ![](./images/add_account.png)
    * Click "Add someone else to this PC"
    ![](./images/add_account_2.png)
    * Click "New User" and fill up the details per policy
    ![](./images/add_account_3.png)
    * Add the user to the "Administrator" group under the appropriate domain
    ![](./images/add_account_4.png)
    ![](./images/add_account_5.png)

10. Open a Powershell terminal with Administrator rights 
    * paste the previously copied script
    ![](./images/add_account_6.png)
    * On successful server connection, answer the questions in the menu presented
    ![](./images/add_account_7.png)
    * Fill up the form presented. A successful agent connection looks like 
    ![](./images/add_account_8.png)
