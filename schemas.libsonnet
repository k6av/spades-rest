{
  ServerList: {
    type: 'array',
    items: { '$ref': '#/components/schemas/Server' },
  },
  Server: {
    type: 'object',
    properties: {
      id: {
        type: 'integer',
        format: 'uint64',
        description: 'Unique server ID',
        example: 7427681592233892000,
        readOnly: true,
      },
      name: {
        type: 'string',
        description: 'Name of this server as specified by its operator',
        example: 'Foo server',
      },
      endpoint: {
        '$ref': '#/components/schemas/ServerEndpoint',
      },
      updated: {
        type: 'integer',
        format: 'int64',
        description: 'Time when server information was last updated as a Unix timestamp',
        readOnly: true,
      },
      status: {
        type: 'string',
        enum: ['online', 'offline', 'unknown'],
        description: 'Status of the server',
      },
      country: {
        type: 'string',
        format: 'country',
        description: 'ISO 3166-1 alpha-2 country code of the server',
        example: 'aq',
      },
      maxPlayers: {
        type: 'integer',
        description: 'Maximum number of players',
      },
      currentPlayers: {
        oneOf: [
          { type: 'array', description: 'List of IDs of players on the server', items: { type: 'integer', format: 'uint64', example: 6129504501702256836 } },
          { type: 'integer', description: 'Number of players on the server' },
        ],
      },
      currentMap: {
        oneOf: [
          { type: 'integer', example: 3433978549599797000, description: 'ID of the map currently being played on this server' },
          { type: 'string', example: 'Bar map', description: 'Name of the map currently being played on this server' },
        ],
      },
      mapRotation: {
        type: 'array',
        description: 'Rotation of maps that are played on this server',
        items: {
          oneOf: [
            { type: 'integer', example: 3433978549599797000, description: 'ID of the map' },
            { type: 'string', example: 'Bar map', description: 'Name of the map' },
          ],
        },
      },
      currentGamemode: {
        oneOf: [
          { type: 'integer', example: 1458071691771966200, description: 'ID of the game mode currently being played on this server' },
          { type: 'string', example: 'Baz gamemode', description: 'Name of the game mode currently being played on this server' },
        ],
      },
      protoVersion: {
        type: 'integer',
        description: 'Protocol version supported by the server, where 0.75 is 3 and 0.76 is 4',
        example: 3,
      },
      operator: {
        type: 'string',
        description: 'Name of the server operator',
      },
      homepage: {
        type: 'string',
        format: 'url',
        description: 'Homepage of the server operator',
        example: 'https://www.example.com',
      },
      description: {
        type: 'string',
        description: 'Longer description of the server',
      },
      tags: {
        type: 'array',
        description: 'List of arbitrary tags for the server',
        items: { type: 'string' },
      },
    },
  },
  ServerEndpoint: {
    oneOf: [
      { type: 'string', format: 'ipv4', description: 'IPv4 address', example: '192.0.0.1' },
      { type: 'string', format: 'ipv6', description: 'IPv6 address', example: 'fc32::10' },
      { type: 'string', format: 'hostname', description: 'DNS name', example: 'example.com' },
    ],
  },
  MapList: {
    type: 'array',
    items: { '$ref': '#/components/schemas/Map' },
  },
  Map: {
    type: 'object',
    properties: {
      id: {
        type: 'integer',
        format: 'uint64',
        description: 'Unique map ID',
        example: 3433978549599797000,
        readOnly: true,
      },
      name: {
        type: 'string',
        description: 'Name of this map as specified by its author',
        example: 'Bar map',
      },
      updated: {
        type: 'integer',
        format: 'int64',
        description: 'Time the map was last updated as a Unix timestamp',
        readOnly: true,
      },
      version: {
        type: 'string',
        description: 'Map version',
        example: '1.0.0',
      },
      gamemodes: {
        type: 'array',
        description: 'Game modes this map is intended for',
        items: {
          oneOf: [
            { type: 'integer', example: 1458071691771966200, description: 'ID of the game mode currently being played on this server' },
            { type: 'string', example: 'Baz gamemode', description: 'Name of the game mode currently being played on this server' },
          ],
        },
      },
      vxlUrl: {
        type: 'string',
        format: 'url',
        description: 'URL where the terrain (VXL) file for the map can be downloaded',
      },
      txtUrl: {
        type: 'string',
        format: 'url',
        description: 'URL where the metadata (TXT) file for the map can be downloaded',
      },
      author: {
        type: 'string',
        description: 'Name of map author',
      },
      homepage: {
        type: 'string',
        format: 'url',
        description: 'Homepage of the map author',
        example: 'https://www.example.com',
      },
      description: {
        type: 'string',
        description: 'Longer description of the map',
      },
      tags: {
        type: 'array',
        description: 'List of arbitrary tags for the map',
        items: { type: 'string' },
      },
    },
  },
  GamemodeList: {
    type: 'array',
    items: { '$ref': '#/components/schemas/Gamemode' },
  },
  Gamemode: {
    type: 'object',
    properties: {
      id: {
        type: 'integer',
        format: 'uint64',
        description: 'Unique gamemode ID',
        example: 1458071691771966200,
        readOnly: true,
      },
      name: {
        type: 'string',
        description: 'Name of this gamemode as specified by its author',
        example: 'Baz gamemode',
      },
      updated: {
        type: 'integer',
        format: 'int64',
        description: 'Time the gamemode was last updated as a Unix timestamp',
        readOnly: true,
      },
      version: {
        type: 'string',
        description: 'Gamemodes version',
        example: '1.0.0',
      },
      author: {
        type: 'string',
        description: 'Name of gamemode author',
      },
      homepage: {
        type: 'string',
        format: 'url',
        description: 'Homepage of the gamemode author',
        example: 'https://www.example.com',
      },
      description: {
        type: 'string',
        description: 'Longer description of the gamemode',
      },
      tags: {
        type: 'array',
        description: 'List of arbitrary tags for the gamemode',
        items: { type: 'string' },
      },
    },
  },
}
