npm i @atd/translations.alarm@latest @atd/translations.alarm-id-to-namespace@latest @atd/translations.setting-id-to-namespace@latest @atd/translations.settings@latest
git branch -D wd/update-translations
git checkout -b wd/update-translations
git add .
git commit -m "Update translation packages"
git push \
    -o merge_request.create \
    -o merge_request.target=master \
    -o merge_request.remove_source_branch \
    -o merge_request.title="chore(deps): Update translation packages" \
    -o merge_request.assignee="@r105100" \
    -o merge_request.description="Updates translation packages"
