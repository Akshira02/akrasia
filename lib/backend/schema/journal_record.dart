import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class JournalRecord extends FirestoreRecord {
  JournalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _answer = snapshotData['answer'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _user = snapshotData['user'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('journal');

  static Stream<JournalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JournalRecord.fromSnapshot(s));

  static Future<JournalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JournalRecord.fromSnapshot(s));

  static JournalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JournalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JournalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JournalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JournalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JournalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJournalRecordData({
  String? title,
  String? answer,
  DateTime? createdDate,
  String? user,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'answer': answer,
      'createdDate': createdDate,
      'user': user,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class JournalRecordDocumentEquality implements Equality<JournalRecord> {
  const JournalRecordDocumentEquality();

  @override
  bool equals(JournalRecord? e1, JournalRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.answer == e2?.answer &&
        e1?.createdDate == e2?.createdDate &&
        e1?.user == e2?.user &&
        e1?.type == e2?.type;
  }

  @override
  int hash(JournalRecord? e) => const ListEquality()
      .hash([e?.title, e?.answer, e?.createdDate, e?.user, e?.type]);

  @override
  bool isValidKey(Object? o) => o is JournalRecord;
}
