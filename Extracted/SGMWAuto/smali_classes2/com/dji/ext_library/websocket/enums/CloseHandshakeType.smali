.class public final enum Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;
.super Ljava/lang/Enum;
.source "CloseHandshakeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

.field public static final enum NONE:Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

.field public static final enum ONEWAY:Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

.field public static final enum TWOWAY:Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;->NONE:Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    new-instance v1, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    const-string v3, "ONEWAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;->ONEWAY:Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    new-instance v3, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    const-string v5, "TWOWAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;->TWOWAY:Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;->$VALUES:[Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;
    .locals 1

    .line 6
    const-class v0, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    return-object p0
.end method

.method public static values()[Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;
    .locals 1

    .line 6
    sget-object v0, Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;->$VALUES:[Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    invoke-virtual {v0}, [Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dji/ext_library/websocket/enums/CloseHandshakeType;

    return-object v0
.end method
