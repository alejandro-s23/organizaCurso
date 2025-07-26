# 🗂️ criarCurso.sh

Um mini-projeto simples e útil para aplicar práticas DevOps na sua própria rotina de estudos.

Este script Bash automatiza a criação da estrutura de pastas para cursos que você está iniciando, organizando seus materiais de forma consistente e rápida.

---

## 💡 Objetivo

Automatizar a criação de diretórios organizados para cada novo curso, com subpastas para PDFs, resumos e práticas.  
Ideal para quem está estudando tecnologia, especialmente com foco em DevOps e automação.

---

## ⚙️ Como funciona

Você fornece o nome do curso como argumento na linha de comando, e o script cria a seguinte estrutura:

📁 Nome-do-Curso/
├── PDFs/
├── Resumos/
└── Pratica/

---

## ▶️ Como usar

1. Dê permissão de execução ao script:

```bash

chmod +x criarCurso.sh

```
2. Execute passando o nome do curso entre aspas:
```bash

./criarCurso.sh "Git e GitHub"

```
3. Resultado:

Um diretório chamado Git e GitHub será criado com as subpastas PDFs, Resumos e Pratica.

📌 Requisitos
Sistema baseado em Unix/Linux

Bash Shell

📁 Estrutura criada
PDFs/ → Para materiais e apostilas do curso

Resumos/ → Onde você pode escrever seus resumos

Pratica/ → Espaço para scripts, códigos e exercícios

🧠 Por que isso é DevOps?
DevOps é sobre automação e eficiência.
Mesmo algo simples como organizar seus estudos pode (e deve) ser automatizado para otimizar tempo e reduzir tarefas repetitivas.

🙋‍♂️ Autor
Criado por Alejandro Souza dos Santos 💻
Se esse projeto te ajudou, sinta-se livre para compartilhar ou contribuir!
