{
  '/servers': {
    get: {
      tags: [
        'server',
      ],
      summary: 'List game servers',
      description: 'List the available game servers',
      operationId: 'listServers',
      responses: {
        '200': {
          description: 'OK',
          content: {
            'application/json': {
              schema: {
                '$ref': '#/components/schemas/ServerList',
              },
            },
          },
        },
      },
    },
    post: {
      tags: ['server'],
      summary: 'Create game server',
      description: 'Create a new game server',
      operationId: 'createServer',
      responses: {
        '201': {
          description: 'Created',
          content: {
            'application/json': {
              schema: {
                type: 'integer',
                format: 'uint64',
                description: 'Unique ID of the created server',
                example: 7427681592233892000,
              },
            },
          },
        },
        '400': {
          description: 'Invalid data',
        },
        '401': {
          description: 'API token is missing or invalid',
        },
      },
      requestBody: {
        description: 'Server object to be created',
        content: {
          'application/json': {
            schema: {
              '$ref': '#/components/schemas/Server',
            },
          },
        },
      },
      security: [
        { apiToken: [] },
      ],
    },
  },
  '/servers/{id}': {
    get: {
      tags: [
        'server',
      ],
      summary: 'Get game server',
      description: 'Get information about a specific game server',
      operationId: 'getServer',
      parameters: [
        {
          name: 'id',
          'in': 'path',
          description: 'ID of the server to return',
          required: true,
          schema: {
            type: 'integer',
            format: 'uint64',
          },
        },
      ],
      responses: {
        '200': {
          description: 'OK',
          content: {
            'application/json': {
              schema: {
                '$ref': '#/components/schemas/Server',
              },
            },
          },
        },
        '404': {
          description: 'No such server found',
        },
      },
    },
    put: {
      tags: ['server'],
      summary: 'Update game server',
      description: 'Update an existing game server',
      operationId: 'updateServer',
      parameters: [
        {
          name: 'id',
          'in': 'path',
          description: 'ID of the server to update',
          required: true,
          schema: {
            type: 'integer',
            format: 'uint64',
          },
        },
      ],
      responses: {
        '200': {
          description: 'OK',
          content: {
            'application/json': {
              schema: {
                '$ref': '#/components/schemas/Server',
              },
            },
          },
        },
        '400': {
          description: 'Invalid data',
        },
        '401': {
          description: 'API token is missing or invalid',
        },
        '403': {
          description: 'API token does not own this server',
        },
        '404': {
          description: 'No such server found',
        },
      },
      requestBody: {
        description: 'New server object',
        content: {
          'application/json': {
            schema: {
              '$ref': '#/components/schemas/Server',
            },
          },
        },
      },
      security: [
        { apiToken: [] },
      ],
    },
    delete: {
      tags: ['server'],
      summary: 'Delete game server',
      description: 'Delete an existing game server',
      operationId: 'deleteServer',
      parameters: [
        {
          name: 'id',
          'in': 'path',
          description: 'ID of the server to delete',
          required: true,
          schema: {
            type: 'integer',
            format: 'uint64',
          },
        },
      ],
      responses: {
        '204': {
          description: 'OK',
        },
        '400': {
          description: 'Invalid data',
        },
        '401': {
          description: 'API token is missing or invalid',
        },
        '403': {
          description: 'API token does not own this server',
        },
        '404': {
          description: 'No such server found',
        },
      },
      security: [
        { apiToken: [] },
      ],
    },
  },

  '/maps': {
    get: {
      tags: [
        'map',
      ],
      summary: 'List game maps',
      description: 'List the available game maps',
      operationId: 'listMaps',
      responses: {
        '200': {
          description: 'OK',
          content: {
            'application/json': {
              schema: {
                '$ref': '#/components/schemas/MapList',
              },
            },
          },
        },
      },
    },
  },
  '/maps/{id}': {
    get: {
      tags: [
        'map',
      ],
      summary: 'Get game map',
      description: 'Get information about a specific game map',
      operationId: 'getMap',
      parameters: [
        {
          name: 'id',
          'in': 'path',
          description: 'ID of the map to return',
          required: true,
          schema: {
            type: 'integer',
            format: 'uint64',
          },
        },
      ],
      responses: {
        '200': {
          description: 'OK',
          content: {
            'application/json': {
              schema: {
                '$ref': '#/components/schemas/Map',
              },
            },
          },
        },
        '404': {
          description: 'No such map found',
        },
      },
    },
  },
  '/gamemodes': {
    get: {
      tags: [
        'gamemode',
      ],
      summary: 'List game modes',
      description: 'List the available game modes',
      operationId: 'listGamemodes',
      responses: {
        '200': {
          description: 'OK',
          content: {
            'application/json': {
              schema: {
                '$ref': '#/components/schemas/GamemodeList',
              },
            },
          },
        },
      },
    },
  },
  '/gamemodes/{id}': {
    get: {
      tags: [
        'gamemode',
      ],
      summary: 'Get game mode',
      description: 'Get information about a specific game mode',
      operationId: 'getGamemode',
      parameters: [
        {
          name: 'id',
          'in': 'path',
          description: 'ID of the game mode to return',
          required: true,
          schema: {
            type: 'integer',
            format: 'uint64',
          },
        },
      ],
      responses: {
        '200': {
          description: 'OK',
          content: {
            'application/json': {
              schema: {
                '$ref': '#/components/schemas/Gamemode',
              },
            },
          },
        },
        '404': {
          description: 'No such game mode found',
        },
      },
    },
  },
}
