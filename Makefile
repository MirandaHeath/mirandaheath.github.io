.PHONY: default publish-prod publish-staging

default:

publish-prod:
	rsync -Pvrthl --delete --exclude .git --info=progress2 ./ sunflower:/srv/www/website.mirandaheath/

publish-staging:
	rsync -Pvrthl --delete --exclude .git --info=progress2 ./ sunflower:/srv/www/website.mirandaheath.staging/
