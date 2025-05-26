openapi.json: openapi.jsonnet $(wildcard *.libsonnet)
	jsonnet openapi.jsonnet -o openapi.json
