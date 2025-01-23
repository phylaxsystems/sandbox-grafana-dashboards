# grafana-dashboards

This repository tracks the latest public Optimism Grafana dashboards.

## Structure

Dashboards are stored as metadata-enhanced JSON files in `resources/dashboards` with a directory structure mirroring the Grafana folder structure. Folder metadata is stored in `resources/folders`.

### Setup

[Install `grizzly`](https://grafana.github.io/grizzly/installation/) and run the following command to configure it with the Grafana instance:

```bash
just configure-cloud <service account token>
```

You can create a new service account and an associated token [here](https://optimistic.grafana.net/org/serviceaccounts/create).

## Usage

To provision these dashboards in your Grafana instance, run the following command after following the setup instructions above:

```bash
just push
```

## Updating

To pull the latest dashboards from Grafana, run the following command:

```bash
just pull
```
