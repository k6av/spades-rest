{
  openapi: '3.0.3',
  info: {
    title: 'Ace of Spades Master Server API',
    description: 'A new master server API for games based on the classic Ace of Spades.',
    version: '0.1.0',
  },
  servers: [
    {
      url: 'https://example.com',
    },
  ],
  tags: [
    {
      name: 'server',
      description: 'Game server discovery',
    },
    {
      name: 'player',
      description: 'Player authentication and social',
    },
    {
      name: 'map',
      description: 'Database of maps',
    },
    {
      name: 'gamemode',
      description: 'Database of game modes',
    },
  ],
  paths: (import 'paths.libsonnet'),
  components: {
    schemas: (import 'schemas.libsonnet'),
    securitySchemes: {
      userToken: {
        type: 'http',
        scheme: 'bearer',
        bearerFormat: 'JWT',
      },
      apiToken: {
        type: 'http',
        scheme: 'bearer',
        bearerFormat: 'JWT',
      },
    },
  },
}
