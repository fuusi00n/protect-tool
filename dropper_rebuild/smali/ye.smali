.class public final Lye;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Lo0;

.field public final b:[B

.field public final c:Ljava/io/File;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:[Lze;

.field public g:[B

.method public constructor <init>(Landroid/content/res/AssetManager;Li6;Lo0;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lye;->e:Z

    .line 6
    .line 7
    iput-object p3, p0, Lye;->a:Lo0;

    .line 8
    .line 9
    iput-object p4, p0, Lye;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p5, p0, Lye;->c:Ljava/io/File;

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 p2, 0x22

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    if-le p1, p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    sget-object p3, Ld40;->q:[B

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    sget-object p3, Ld40;->r:[B

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    sget-object p3, Ld40;->s:[B

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_3
    sget-object p3, Ld40;->t:[B

    .line 35
    .line 36
    :goto_0
    iput-object p3, p0, Lye;->b:[B

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p1, "compressed"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final b(ILjava/io/Serializable;)V
    .locals 2

    .line 1
    new-instance v0, Lab;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lab;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lab;->run()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
