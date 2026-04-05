---
title: "Cómo desplegar un agente de atención al cliente con Claude y n8n sin programar"
slug: agente-atencion-cliente-claude-n8n
pillar: AGENTES
date: 2026-04-04
lang: es
url: https://estrategiaclaw.com/es/agente-atencion-cliente-claude-n8n
---

# Cómo desplegar un agente de atención al cliente con Claude y n8n sin programar

Tu negocio pierde clientes cada noche cuando nadie contesta. Un agente de IA conectado a WhatsApp o email puede responder consultas, agendar citas y escalar problemas graves a un humano, sin que toques una sola línea de código. Hoy te muestro exactamente cómo armarlo con Claude y n8n.

## Qué hace exactamente este agente

No estamos hablando de un chatbot torpe que repite respuestas enlatadas. Un agente de atención al cliente con Claude entiende contexto, mantiene el hilo de la conversación y toma decisiones.

En la práctica, este agente puede:

- Responder preguntas frecuentes sobre tu negocio (horarios, precios, ubicación)
- Clasificar el tipo de consulta: venta, soporte, queja, urgencia
- Agendar citas conectándose a Google Calendar
- Escalar a un humano cuando detecta frustración o un tema que no puede resolver
- Funcionar 24/7 por WhatsApp, email o webchat

La diferencia con un chatbot tradicional es que Claude razona. No busca palabras clave. Lee el mensaje completo, entiende la intención y responde como lo haría un empleado bien entrenado.

## Las piezas que necesitas

Este sistema tiene tres componentes. Ninguno requiere programar.

**1. Claude (el cerebro).** Es el modelo de IA que procesa y genera las respuestas. Para atención al cliente, Claude Haiku 4.5 es la mejor opción: es rápido, barato y suficientemente inteligente para este trabajo. Cuesta $1 USD por millón de tokens de entrada y $5 USD por millón de tokens de salida. Una conversación promedio de soporte usa unos 3,700 tokens. Eso significa que 10,000 conversaciones te cuestan aproximadamente $37 USD. Precio verificado en [platform.claude.com](https://platform.claude.com/docs/en/about-claude/pricing).

**2. n8n (el sistema nervioso).** n8n es la plataforma de automatización que conecta todo: recibe el mensaje del cliente, se lo pasa a Claude, toma la respuesta y la envía de vuelta. También conecta con tu calendario, tu CRM o tu base de datos. n8n Cloud arranca en 24 euros al mes (plan Starter, 2,500 ejecuciones). Pero si tienes un servidor o VPS, puedes instalar la versión Community gratis, con ejecuciones ilimitadas. Verifica el precio actual en [n8n.io/pricing](https://n8n.io/pricing/).

**3. Un canal de entrada.** WhatsApp Business API, un widget de chat en tu sitio web, o simplemente email. n8n tiene nodos nativos para los tres.

## Cómo se arma en n8n (sin código)

El flujo completo tiene 5 nodos. Así funciona:

**Nodo 1: Trigger.** Un webhook que recibe el mensaje entrante. Si usas WhatsApp Business API, el mensaje llega aquí automáticamente cada vez que un cliente escribe.

**Nodo 2: Contexto.** Un nodo que busca en tu base de datos o Google Sheet la información del negocio: horarios, precios, políticas de devolución, FAQ. Esto se inyecta como contexto para Claude.

**Nodo 3: Claude (AI Agent).** n8n tiene un nodo nativo de AI Agent que se conecta directamente a la API de Anthropic. Le pasas el mensaje del cliente más el contexto de tu negocio. Claude genera la respuesta.

**Nodo 4: Decisión.** Un nodo IF que revisa si Claude marcó la conversación para escalamiento humano. Si la respuesta incluye una etiqueta como [ESCALAR], el flujo se desvía a notificar a un humano por Slack o email.

**Nodo 5: Respuesta.** Envía la respuesta de Claude de vuelta al cliente por el mismo canal por donde escribió.

Todo esto se arrastra y suelta en el editor visual de n8n. Cero código.

## Cuánto cuesta operar esto al mes

Hagamos números reales para un negocio que recibe 50 consultas diarias:

- 50 consultas x 30 días = 1,500 conversaciones al mes
- Claude Haiku 4.5 para 1,500 conversaciones: aproximadamente $5.50 USD al mes
- n8n Cloud Starter: 24 euros al mes (o gratis si usas self-hosted)
- WhatsApp Business API: varía por proveedor, pero estima $15-30 USD al mes para ese volumen

**Total estimado: entre $5.50 y $60 USD al mes.**

Compara eso con contratar a una persona para turno nocturno. O con los clientes que pierdes porque nadie les contestó a las 11pm un domingo.

## Trampas que debes evitar

**No lances sin probar con casos reales.** Antes de conectar el agente a tus clientes, pásale las 50 preguntas más comunes de tu negocio. Revisa cada respuesta. Ajusta el prompt del sistema hasta que las respuestas sean correctas y con tu tono de voz.

**No elimines la opción humana.** Siempre debe haber una forma de hablar con una persona real. El agente debe saber cuándo decir "te conecto con alguien de mi equipo". Los clientes frustrados que no pueden hablar con un humano se van y no vuelven.

**No uses el modelo más caro "por si acaso".** Claude Opus 4.6 cuesta 5 veces más que Haiku 4.5 en entrada y salida. Para atención al cliente estándar, Haiku sobra. Guarda Opus para tareas que realmente necesiten razonamiento complejo.

**No ignores las métricas.** n8n te permite registrar cada conversación. Revisa semanalmente: qué preguntas no pudo responder el agente, cuántas veces escaló a un humano, cuántos clientes abandonaron la conversación. Esos datos te dicen exactamente qué ajustar.

## Lo que puedes hacer hoy

1. **Crea una cuenta gratuita en [n8n.io](https://n8n.io)** y explora el nodo AI Agent. Conecta tu API key de Anthropic (puedes obtener una en [console.anthropic.com](https://console.anthropic.com) con créditos gratuitos iniciales) y hazle una pregunta de prueba.
2. **Escribe las 20 preguntas más frecuentes que recibe tu negocio** y las respuestas correctas para cada una. Este documento será el contexto que alimenta a Claude. Sin este paso, el agente va a inventar respuestas.
3. **Construye el flujo de 5 nodos descrito arriba** y pruébalo con tu propio WhatsApp personal o un email de prueba. No lo conectes a clientes reales hasta que hayas probado al menos 50 interacciones y estés satisfecho con las respuestas.

## Recursos

- [Precios de la API de Claude (Anthropic)](https://platform.claude.com/docs/en/about-claude/pricing)
- [Precios de n8n Cloud](https://n8n.io/pricing/)
- [Integración Claude + n8n](https://n8n.io/integrations/claude/)
- [Consola de Anthropic (para obtener tu API key)](https://console.anthropic.com)
- [Documentación de AI Agents en n8n](https://n8n.io/ai-agents/)
