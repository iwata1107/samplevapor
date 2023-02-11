import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {

    app.databases.use(.postgres(
        hostname: "ec2-3-223-213-207.compute-1.amazonaws.com",
        username: "ajpozesbvfwgzc",
        password: "f0240ec3e01e3512f0e62719341786d708e1f532cc42c4d6370db7fd44b0bf35",
        database: "d2322jtrglsqho"
    ), as: .psql)

    // マイグレーションの実行
    app.migrations.add(CreateCoordinate())

    // register routes
    try routes(app)
}
