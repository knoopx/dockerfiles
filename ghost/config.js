module.exports = {
    production: {
        url: process.env.GHOST_URL,
        mail: {},
        database: {
            client: 'sqlite3',
            connection: {
                filename: 'content/ghost.db'
            },
            debug: false
        },
        server: {
            host: '0.0.0.0',
            port: '2368'
        }
    }
};
