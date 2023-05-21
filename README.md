### MoniNet application

Here is an application that retrieves an host's IP address and set machine on port 3000. 
The graph illustrating the CI/CD process of the MoniNet application is presented below:\

```mermaid
flowchart LR
A[MoniNet_App] --> B[.git local]
B --> C[Azure DevOps]
B --> D[Github as backup]
subgraph CI
C --> E[Repos]
E --> F[Pipelines]
F --> J[Build]
J --> K[Job]
end
A --> G[Dockerfile]
G --> H[Image]
subgraph CD
H --> I[Azure Container Registries Release]
H --> L[docker hub public release]
end
K --> H
```



