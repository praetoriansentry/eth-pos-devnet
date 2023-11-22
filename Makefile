clean:
	docker ps -a -q | xargs --no-run-if-empty docker rm -f
	sudo rm -rf ./consensus/beacondata* ./consensus/validatordata ./consensus/genesis.ssz
	sudo rm -rf ./execution/geth ./execution/erigon
