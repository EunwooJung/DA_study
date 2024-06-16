SELECT II.item_id, item_name
FROM item_info II
JOIN item_tree IT ON II.item_id = IT.item_id
WHERE parent_item_id IS NULL
ORDER BY item_id;