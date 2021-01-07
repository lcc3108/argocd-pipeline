# ---
# apiVersion: v1
# kind: Secret
# metadata:
#   name: argocd-env-secret
# data:
#   # choose one of username/password or auth token
#   ARGOCD_USERNAME: <username>
#   ARGOCD_PASSWORD: <password>
#   ARGOCD_AUTH_TOKEN: <token>
# ---
# apiVersion: v1
# stringData:
#   password: <Github Personal Access Token>
#   username: <username>
# kind: Secret
# metadata:
#   annotations:
#     tekton.dev/git-0: https://github.com
#   name: {{ .Values.config.serviceAccount.gitSecret }}
# type: kubernetes.io/basic-auth
# ---
# apiVersion: v1
# stringData:
#   password: <Harbor Access Token>
#   username: <username>
# kind: Secret
# metadata:
#   annotations:
#     tekton.dev/git-0: https://github.com
#   name: {{ .Values.config.serviceAccount.dockerSecret }}
# type: kubernetes.io/basic-auth
