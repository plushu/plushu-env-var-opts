# plushu-env-var-opts

Allows environment variables to be assigned as pre-command options, like so:

```bash
plushu EXAMPLE=value example-command echo
```

Normally, you should never need this plugin: any environment variables that
need to be assigned should have their own plugins to control their behavior
(such as the plushu-trace plugin, which provides the `-t` and `--trace` options
to set `PLUSHU_TRACE`). Any command that could involve setting environment
variables in a lower context (such as a command to run commands in the context
of an app's container) should provide its own post-command option processing to
provide such environment variables.

Allowing arbitrary environment variables to be assigned can be a security hole
(which is why SSH only whitelists certain environment variables as safe for
passthrough), so this plugin should only be installed when it needs to be, in
an environment where all users are fully trusted.
