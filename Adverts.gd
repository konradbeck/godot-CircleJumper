extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	$AdMob.load_banner()
	$AdMob.load_interstitial()

func show_ad_banner():
	if Settings.enable_ads:
		$AdMob.show_banner()


func hide_ad_banner():
	$AdMob.hide_banner()


func show_ad_interstitial():
	if $AdMob.is_interstitial_loaded() and Settings.enable_ads:
		$AdMob.show_interstitial()


func _on_AdMob_interstitial_closed():
	if Settings.enable_ads:
		show_ad_banner()
