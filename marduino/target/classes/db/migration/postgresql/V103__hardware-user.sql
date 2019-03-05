INSERT INTO user_(id, user_name, password, account_expired, account_locked, credentials_expired, enabled)
  VALUES (2, 'hwuser', /*PXrAHhLh*/'$2y$10$T167xYh4e8tmxJ0indCYL.c1DTofrAQiyoIlPVL4T198Yj.5HRE.e', FALSE, FALSE, FALSE, TRUE);
INSERT INTO users_authorities(user_id, authority_id) VALUES (2, 1);