bev-clean:
	rm -rf beverly-hills/teku
	rm -rf beverly-hills/nethermind
	rm -rf ~/.local/share/teku

kau-clean:
	rm -rf kaustinen/eth2
	rm -rf kaustinen/nethermind
	rm -rf kaustinen/lighthouse

setup-kau:
	./beverly-hills/setup.sh
	./kasutinen/setup.sh
