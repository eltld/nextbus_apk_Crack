.class public final Lcom/a/a/b/a/t;
.super Lcom/a/a/af;


# static fields
.field public static final a:Lcom/a/a/ag;


# instance fields
.field private final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/b/a/u;

    invoke-direct {v0}, Lcom/a/a/b/a/u;-><init>()V

    sput-object v0, Lcom/a/a/b/a/t;->a:Lcom/a/a/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/af;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/b/a/t;->b:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/a/a/d/a;)Ljava/sql/Date;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/e;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/e;->i:Lcom/a/a/d/e;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/a;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/b/a/t;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/a/a/ab;

    invoke-direct {v1, v0}, Lcom/a/a/ab;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Lcom/a/a/d/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/t;->a(Lcom/a/a/d/f;Ljava/sql/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/a/a/d/f;Ljava/sql/Date;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/a/a/d/f;->b(Ljava/lang/String;)Lcom/a/a/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/b/a/t;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/b/a/t;->a(Lcom/a/a/d/a;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method
