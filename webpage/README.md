# Directorio de salida de documentación técnica

The [`gh-pages`](https://github.com/$REPO_SLUG/tree/gh-pages) branch hosts the contents of this directory at <https://$OWNER_NAME.github.io/$REPO_NAME/>.
The permalink for this webpage version is <https://$OWNER_NAME.github.io/$REPO_NAME/v/$COMMIT/>.
To redirect to the permalink for the latest manuscript version at anytime, use the link <https://$OWNER_NAME.github.io/$REPO_NAME/v/freeze/>.

## Listado

This directory contains the following files, which are mostly ignored on the `main` branch:

+ [`index.html`](index.html) is an HTML manuscript.
+ [`manuscript.pdf`](manuscript.pdf) is a PDF manuscript.

The `v` directory contains directories for each manuscript version.
In general, a version is identified by the commit hash of the source content that created it.


### Versiones

| Tema           | $PROYECTO $PROY_DESCR      |
|----------------|----------------------------|
| Palabras clave | SUI, Softgic, PGN, Análisis de brecha, GAP, Comparativa |
| **Versión**    |                            |
$HISTORIAMD



Verifying timestamps with the `ots verify` command requires running a local bitcoin node with JSON-RPC configured, at this time.

## Source

The manuscripts in this directory were built from
[`$COMMIT`](https://github.com/$REPO_SLUG/commit/$COMMIT).
