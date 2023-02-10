import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {

    app.databases.use(.postgres(
        hostname: "localhost",
        username: "postgres",
        password: "",
        database: "iwatashotadb"
    ), as: .psql)

    // マイグレーションの実行
    app.migrations.add(CreateCoordinate())

    // register routes
    try routes(app)
}
