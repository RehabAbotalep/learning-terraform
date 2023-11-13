## Resource Behavior

Applying Terraform configuration will:

- Create resources that exist in the configuration but are not associated with a real infrastructure object in the state.
- Destroy resources that exist in the state but no longer exist in the configuration.
- Update in-place resources whose arguments have changed (ex: add a tag to EC2).
- Destroy and re-create resources whose arguments have changed but which cannot be updated in-place due to remote API limitations (ex: change the EC2 AMI)

This default behavior can be customized using `meta-arguments` within resource block.

|Argument                | Description                                                          |
|------------------------|----------------------------------------------------------------------|
|lifecycle               |Define certain lifecycle behaviors for a resource                     |
|count                   |Create multiple instances of a resource based on a numeric value      |

## Lifecycle Argument

Define certain lifecycle behaviors for a resource.

The arguments available within a lifecycle block are:

- ignore_changes
- create_before_destroy
- prevent_destroy
- replace_triggered_by

### ignore_changes

A list of attribute names for which changes should be ignored during updates. This can be useful when certain attributes may change due to external factors, but you don't want Terraform to consider those changes when deciding whether to recreate the resource.

**Example:** Imagine you have a Terraform setup creating an EC2 instance tagged as `Name = "Hello World"`. Now, someone manually adds a tag, `Env = "Test"`, directly in the cloud.

Normally, when you run `terraform apply` again, Terraform notices the extra tag and removes it because it's not in your configuration.

![](../../../images/before-ignore-changes.gif)

But, what if you want Terraform to just let it be? This is where `ignore_changes` comes in.

By using ignore_changes, you're basically telling Terraform, "Hey, don't worry about certain changes; I've got it covered." It ensures that Terraform won't mess with the specific attributes you specify, even if they change externally.

![](../../../images/after-ignore-changes.gif)