export APP_HANDSHAKE_DATA_DIR="${EXPORTS_APP_DIR}/hsd"
export APP_HANDSHAKE_NODE_IP="10.21.53.53"
export APP_HANDSHAKE_APP_IP="10.21.53.80"
export APP_HANDSHAKE_APP_PORT="8053"

HANDSHAKE_ENV_FILE="${EXPORTS_APP_DIR}/.env"

if [[ ! -f "${HANDSHAKE_ENV_FILE}" ]]; then
	echo "export APP_HANDSHAKE_NETWORK='main'"	>  "${HANDSHAKE_ENV_FILE}"
fi

. "${HANDSHAKE_ENV_FILE}"


if [[ "${APP_HANDSHAKE_NETWORK}" == "main" ]]; then
	export APP_HANDSHAKE_PORT="12037"
elif [[ "${APP_HANDSHAKE_NETWORK}" == "testnet" ]]; then
	export APP_HANDSHAKE_PORT="13037"
elif [[ "${APP_HANDSHAKE_NETWORK}" == "regtest" ]]; then
	export APP_HANDSHAKE_PORT="14037"
elif [[ "${APP_HANDSHAKE_NETWORK}" == "signet" ]]; then
	export APP_HANDSHAKE_PORT="15037"
else
	echo "Warning (${EXPORTS_APP_ID}): Handshake Network '${APP_HANDSHAKE_NETWORK}' is not supported"
fi