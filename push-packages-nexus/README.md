  

## Uploading .deb packages to Sonatype Nexus

  

[Sonatype Nexus Repository Manager](https://www.sonatype.com/products/sonatype-nexus-repository)

In order to create a repository for .deb packages, the official [instructions](https://help.sonatype.com/repomanager3/nexus-repository-administration/formats/apt-repositories) were used
### Description of the upload-packages.sh file
Before execution, you need to edit the file itself and change two variables: `nexusURL` and `repositoryName`, I did not include them in the input request, since it is assumed that you will have one repository, if you need to change the repository every time, just add this same as the variables above.

**When executing the file you will be required to:**
- Username - Username with rights to download packages to Sonotype Nexus
- Password - Password for this account
- Path - Path to the list of your .deb packages. **Please note that the script goes recursively through the folder you specified and searches for all packages with the .deb extension**
___
If this script helped you, please give me a like. If there are any comments or additions, I will be glad to complement them with you.
