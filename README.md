# Lembrete da Nádia — versão mobile/PWA

Esta versão foi preparada como aplicativo mobile-first/PWA, usando a logo aprovada.

## Incluído
- Interface exclusivamente pensada para celular
- Instalação como app na tela inicial
- Tela Hoje
- 5 suplementos da rotina
- "Tomei" e "Vou tomar depois"
- Histórico
- Resumo
- Estoque
- Configuração de horários/mensagens/intervalo
- Service Worker e manifesto PWA
- Solicitação de permissão de notificações

## Para produção
Para cumprir a parte de dois celulares de forma confiável, ainda é necessário conectar o projeto a um backend (por exemplo Supabase) e configurar:
- autenticação Nádia/responsável;
- banco de dados sincronizado;
- Row Level Security;
- notificações push;
- agendamento dos lembretes no servidor;
- evento "Preciso de ajuda";
- sincronização de estoque e histórico.

Não coloquei credenciais reais no projeto porque elas não foram fornecidas.
