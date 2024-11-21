-- Insert top-level categories
INSERT INTO Categories (name, parent_id) VALUES
                                             ('Hoàn Cảnh Quyên Góp', NULL),
                                             ('Trái Tim MoMo', NULL),
                                             ('Heo Đất MoMo', NULL),
                                             ('Chiến Dịch Gây Quỹ', NULL),
                                             ('Đối Tác Đồng Hành', NULL),
                                             ('Tin Tức Cộng Đồng', NULL);

-- Insert subcategories under 'Hoàn Cảnh Quyên Góp'
INSERT INTO Categories (name, parent_id) VALUES
                                             ('Vì Trẻ Em', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1)),
                                             ('Người Già, Người Khuyết Tật', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1)),
                                             ('Bệnh Hiểm Nghèo', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1)),
                                             ('Hoàn Cảnh Khó Khăn', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1)),
                                             ('Hỗ Trợ Giáo Dục', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1)),
                                             ('Đầu Tư Cơ Sở Vật Chất', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1)),
                                             ('Cứu Trợ Động Vật', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1)),
                                             ('Bảo Vệ Môi Trường', (SELECT id FROM Categories WHERE name = 'Hoàn Cảnh Quyên Góp' LIMIT 1));

-- Insert subcategories under 'Chiến Dịch Gây Quỹ' (with parent_id referencing id = 4)
INSERT INTO Categories (name, parent_id) VALUES
                                             ('Trái tim Hồng', (SELECT id FROM Categories WHERE name = 'Chiến Dịch Gây Quỹ' LIMIT 1)),
                                             ('Giving Lunch', (SELECT id FROM Categories WHERE name = 'Chiến Dịch Gây Quỹ' LIMIT 1)),
                                             ('Xây Tết Hồng', (SELECT id FROM Categories WHERE name = 'Chiến Dịch Gây Quỹ' LIMIT 1)),
                                             ('Sống tốt cùng Katinat', (SELECT id FROM Categories WHERE name = 'Chiến Dịch Gây Quỹ' LIMIT 1)),
                                             ('Góp Lá Và Rừng', (SELECT id FROM Categories WHERE name = 'Chiến Dịch Gây Quỹ' LIMIT 1));
