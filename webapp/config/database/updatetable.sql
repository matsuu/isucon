ALTER TABLE article ADD COLUMN commented_at DATETIME NOT NULL AFTER body;
UPDATE article SET commented_at = (SELECT MAX(created_at) FROM comment WHERE article.id = comment.article);
