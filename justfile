configure-grafana url token:
    grr config create-context grafana
    grr config set grafana.url {{url}}
    grr config set grafana.token {{token}}
    grr config set output-format json

use-context:
    grr config use-context grafana

push: use-context
    # We must explicitly provision folders prior to dashboards due to a bug in `grizzly`.
    # Note the `-e` flag (`--continue-on-error`), which is required as many of the exported dashboards currently contain syntax errors due to Grafana quirks.
    # The `---disable-reporting` is required on every command as `grizzly` does not support enviornment variable configuration fully.
    
    grr push resources/folders -e --disable-reporting
    grr push resources/dashboards -e --disable-reporting
