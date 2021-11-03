# test
1.must have kubernetes cluster up and runnin
2.install terraform in cluster
3.pull the Dockerfile and *.tf files into your local repo where the code is stored 
3.1 docker login
4.create /data in root (or wherever you want to) move dermotology.data there
4.1 make cahnges in .py file add path in my case data = np.loadtxt('/data/dermatology.data', delimiter=',',
4.2   add them at the end of .py file      
        log_cout=open('/data/log_cout.txt', 'w'),
        log_cerr=open('/data/log_cerr.txt', 'w')) 
5.run them with terraform init, terraform apply in code repo
5.1 i dont recomend you execute dkr-build.tf and dkr-push.tf files if you are not made changes to dockerfile and want to overwrite, if not, files are up to date
6. run kubectl get pods to see results 
