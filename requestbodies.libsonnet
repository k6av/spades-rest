{
  Server: {
    description: 'Server object to be created',
    content: {
      'application/json': {
        schema: {
          '$ref': '#/components/schemas/Server',
        },
      },
    },
  },
}
