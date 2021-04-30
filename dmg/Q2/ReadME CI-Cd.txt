Diagram as berif.
We will have multiple  jenkins Jobs or Jenkins Pipelines where each job will represent a Micro
Service (PHP,Java,Python etc.). Respective Jenkins job will be triggered as soon as code is 
pushed to the Configured Repository. Jenkins will pull that code and do Code quality and Code 
security Scan (Sonar Scanner).If it fails it  developer(s) might need to check code and can push
it back againg. If it doesn't then Another Jenkins Job will be Triggered based upon sucess of this
Job(DownStream Job) which will build the code and update the Kubernetes Cluster so that it can 
be deployed  (an shell or ansible script will be required). If this Step fails it will notify (via mail) to 
the Developer and Devops person. If it gets sucess then we can run our smoke test or unit tests.  


Which UserGroup?(For Jenkins too)

If we want an Architecture where a set of micro service requires different user or we are seprating 
micro services based upon the Coding Language then we can define user group accordinly.
Example: Let's assume we have 3 micro services in Python and 3 In PHP.
then we can define the group which will have permissions to create or modify existing cluster files.
we can set the cluster config file's permissions to the user group.


Ensuring The access: (For Jenkins Too)

Since we have created different user groups which will have permissions to change respective files
or directories we can add respective developer to that user group instead of sudo or some other 
groups which have more access than required. So by doing so we will have developer(user) which 
can access files that are being allowed to be accessed by the group. We can add a user to multipel
groups to a user. 




Problems: 
1. If  we want to access same directory by multiple groups then we need to change the unmask value
of the directory and need to configured different directories to be shared among the groups.
2. Handling jenkins User/Group Based access.

