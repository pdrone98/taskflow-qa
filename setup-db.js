const Database = require('better-sqlite3')
const path = require('path')
const fs = require('fs')

const dbPath = path.resolve(__dirname, 'taskflow.db')
const schemaPath = path.resolve(__dirname, 'docs/schema.sql')

// Cria o banco e executa o schema
const db = new Database(dbPath)
const schema = fs.readFileSync(schemaPath, 'utf8')

db.exec(schema)

console.log('✅ Banco de dados criado com sucesso em:', dbPath)
console.log('✅ Tabelas criadas: users, tasks')

// Insere dados iniciais para testes
const insertUser = db.prepare(`
  INSERT OR IGNORE INTO users (name, email, password)
  VALUES (?, ?, ?)
`)

insertUser.run('Admin TaskFlow', 'admin@taskflow.com', 'Admin@123')
insertUser.run('Usuário Teste', 'teste@taskflow.com', 'Teste@123')

console.log('✅ Usuários de teste inseridos com sucesso')

db.close()