SELECT I.item_id, item_name, rarity
FROM item_info I
JOIN item_tree T ON I.item_id = T.item_id
WHERE T.parent_item_id IN
        (SELECT item_id 
         FROM item_info
         WHERE rarity = 'RARE')
ORDER BY I.item_id DESC;