provider "kubectl" {}

resource "kubectl_manifest" "test" {
    yaml_body = <<YAML
apiVersion: batch/v1
kind: Job
metadata:
  name: train
spec:
  template:
    spec:
      restartPolicy: Never
      containers:
      - name: test
        image: azizonick/python-test6:latest
        command: [ "python", "./train.py"]
        resources:
          requests:
            cpu: 20m
            memory: 300Mi 
          limits:
            cpu: 20m
            memory: 300Mi 

        volumeMounts:
        - name: crypto-config
          mountPath: /data
      volumes:
      - name: crypto-config
        hostPath:
          path: "/root/data"
  
  backoffLimit: 4

YAML
}
