INSERT INTO authority(id, name) VALUES (4, 'CLIENT_CONFIG_READ');
INSERT INTO authority(id, name) VALUES (5, 'CLIENT_WRITE');
INSERT INTO authority(id, name) VALUES (6, 'HARDWARE_READ');
--Admin Roles
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 4);
INSERT INTO users_authorities(USER_ID, authority_id) VALUES (1, 5);
INSERT INTO users_authorities(USER_ID, authority_id) VALUES (1, 6);
-- Hardware read
INSERT INTO users_authorities(user_id, authority_id) VALUES (2, 6);