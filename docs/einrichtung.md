# Einrichtung für den Unterricht

## Pipeline 01: Environment Variables

Diese Pipeline funktioniert sofort.

Sie zeigt, wie man Variablen direkt in der YAML Datei definiert:

```yaml
env:
  COURSE_NAME: "GitHub Actions Unterricht"
```

## Pipeline 02: Repository Variables

Diese Pipeline nutzt GitHub Repository Variables.

Lege diese Variables an:

```text
APP_NAME
TARGET_ENV
APP_VERSION
```

Beispielwerte:

```text
APP_NAME = Teilnehmer App
TARGET_ENV = Testumgebung
APP_VERSION = 1.0.0
```

## Pipeline 03: Secrets

Diese Pipeline nutzt ein GitHub Secret.

Lege dieses Secret an:

```text
DEMO_API_TOKEN
```

Beispielwert:

```text
test-token-123456
```

Wichtig:

Secrets dürfen nicht in der YAML Datei stehen.
