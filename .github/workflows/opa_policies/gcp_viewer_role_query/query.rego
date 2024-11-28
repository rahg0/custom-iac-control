package Cx

CxPolicy[result] {
    module := input.document[i].module[_]
	roles := module.roles
	role := roles[_]

	contains(role, "roles/viewer")

	result := {
		"documentId": input.document[i].id,
		"resourceType": "module",
		"resourceName": input.document[i].id,
		"searchKey": sprintf("%s.roles", [input.document[i].id]),
		"issueType": "IncorrectValue",
		"keyExpectedValue": "roles should not include roles/viewer",
		"keyActualValue": sprintf("roles includes %s", [role]),
	}
}
