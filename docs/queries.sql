-- ============================================
-- QUERIES DE VALIDAÇÃO — TaskFlow QA
-- Fase 4: usadas nos testes Cypress + SQLite
-- ============================================

-- Verificar se usuário foi criado corretamente
SELECT * FROM users
WHERE email = 'admin@taskflow.com';

-- Verificar total de usuários cadastrados
SELECT COUNT(*) as total FROM users;

-- Verificar se tarefa foi criada corretamente
SELECT * FROM tasks
WHERE title = 'Minha primeira tarefa';

-- Verificar tarefas de um usuário específico
SELECT t.* FROM tasks t
INNER JOIN users u ON t.user_id = u.id
WHERE u.email = 'teste@taskflow.com';

-- Verificar tarefa por status
SELECT * FROM tasks
WHERE status = 'pending';

-- Verificar se tarefa foi atualizada corretamente
SELECT * FROM tasks
WHERE id = 1 AND status = 'completed';

-- Verificar se tarefa foi deletada
SELECT COUNT(*) as total FROM tasks
WHERE id = 1;

-- Verificar integridade referencial
SELECT t.*, u.name as user_name
FROM tasks t
INNER JOIN users u ON t.user_id = u.id;