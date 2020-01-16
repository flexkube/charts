HELM=helm
REPO_URL=https://flexkube.github.io/charts/

.PHONY: index
index:
	$(HELM) repo index --url $(REPO_URL) .

.PHONY: package
package:
	$(HELM) package $(CHART_PATH)
