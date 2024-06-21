-- 더 이상 업그레이드할 수 없는 아이템의 아이템 ID(ITEM_ID
-- 아이템 명(ITEM_NAME), 아이템의 희귀도(RARITY)를 출력
-- 아이템 ID를 기준으로 내림차순 정렬

SELECT I.item_id, item_name, rarity
FROM item_info I
LEFT JOIN item_tree T ON I.item_id = T.parent_item_id
WHERE T.item_id IS NULL
ORDER BY I.item_id DESC;

