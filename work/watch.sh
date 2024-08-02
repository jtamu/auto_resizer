#!/bin/bash

watch_dir=/images

inotifywait -e CREATE -m $watch_dir | while read event; do
	target=$(echo $event | cut -d ' ' -f 3- | echo $watch_dir/$(cat))

	# 更新日時から1秒が経過していない場合は変換しない(ファイル作成イベントの無限ループを避けるため)
	now=$(date +%s)
	updated_at=$(date -r "$target" +%s)
	if [[ $((updated_at+1)) -gt $now ]]; then
		continue
	fi
	./resize.sh "$target"
done
