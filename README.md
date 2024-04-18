# Rolling-update-Demo

# Make sure to install docker desktop to run docker and kubernetes.

1. Go to docker directory and run the following command to create docker image for the app.
    `docker-compose build`

2. Deploy the Deployment and Service by running the following command:

    `kubectl create -f ./ --save-config`

3. Run `kubectl get all` and notice that 4 Pods, 1 Deployment, and 1 ReplicaSet have successfully been deployed.
4. Open a separate command window and run one of the following scripts based on your OS to call into the nginx Pods:

    **Windows (open a PowerShell window):**

    `./curl-loop.ps1`

    **Mac**

    `sh curl-loop.sh`

5. Change the image version in `deployment.yml` to the one shown in the comment right next to it. Save the file.
6. Run the following command to apply the new Deployment:

    `kubectl apply -f deployment.yml --record`

7. Go back and check the curl commands being made by the script and you should see no interuption in the service. This demonstrates a Rolling Deployment in action.
8. Check the Deployment status by running the following:

    `kubectl rollout status deployment my-nginx`

9. To revert back to previous deployment, run command:
    `kubectl rollout undo deployment`