{{/* vim: set filetype=mustache: */}}


{{/*
Set '.isOpenshift' and '.isKubernetes' chart flags based
on platform.
*/}}
{{- define "conjur-app.platform-flags" -}}
{{- if eq .Values.platform "openshift" }}
{{- $_ := set . "isOpenshift" "true" }}
{{- $_ := set . "isKubernetes" "false" }}
{{- else }}
{{- $_ := set . "isOpenshift" "false" }}
{{- $_ := set . "isKubernetes" "true" }}
{{- end -}}
{{- end -}}
