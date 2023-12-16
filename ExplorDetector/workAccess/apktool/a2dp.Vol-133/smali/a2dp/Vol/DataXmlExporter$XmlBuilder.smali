.class La2dp/Vol/DataXmlExporter$XmlBuilder;
.super Ljava/lang/Object;
.source "DataXmlExporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/DataXmlExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlBuilder"
.end annotation


# static fields
.field private static final CLOSE_WITH_TICK:Ljava/lang/String; = "\'>"

.field private static final COL_CLOSE:Ljava/lang/String; = "</col>"

.field private static final COL_OPEN:Ljava/lang/String; = "<col name=\'"

.field private static final DB_CLOSE:Ljava/lang/String; = "</database>"

.field private static final DB_OPEN:Ljava/lang/String; = "<database name=\'"

.field private static final OPEN_XML_STANZA:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

.field private static final ROW_CLOSE:Ljava/lang/String; = "</row>"

.field private static final ROW_OPEN:Ljava/lang/String; = "<row>"

.field private static final TABLE_CLOSE:Ljava/lang/String; = "</table>"

.field private static final TABLE_OPEN:Ljava/lang/String; = "<table name=\'"


# instance fields
.field private final sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:La2dp/Vol/DataXmlExporter;


# direct methods
.method public constructor <init>(La2dp/Vol/DataXmlExporter;)V
    .locals 1
    .param p1, "this$0"    # La2dp/Vol/DataXmlExporter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->this$0:La2dp/Vol/DataXmlExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    .line 145
    return-void
.end method


# virtual methods
.method addColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<col name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</col>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    return-void
.end method

.method closeRow()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "</row>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    return-void
.end method

.method closeTable()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "</table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    return-void
.end method

.method end()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "</database>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method openRow()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<row>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    return-void
.end method

.method openTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<table name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    return-void
.end method

.method start(Ljava/lang/String;)V
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, La2dp/Vol/DataXmlExporter$XmlBuilder;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<database name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method
