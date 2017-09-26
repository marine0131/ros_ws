/****************************************************************************
** Meta object code from reading C++ file 'submaps_display.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/cartographer_ros/cartographer_rviz/src/submaps_display.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'submaps_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_cartographer_rviz__SubmapsDisplay[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      35,   34,   34,   34, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_cartographer_rviz__SubmapsDisplay[] = {
    "cartographer_rviz::SubmapsDisplay\0\0"
    "Reset()\0"
};

void cartographer_rviz::SubmapsDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SubmapsDisplay *_t = static_cast<SubmapsDisplay *>(_o);
        switch (_id) {
        case 0: _t->Reset(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData cartographer_rviz::SubmapsDisplay::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject cartographer_rviz::SubmapsDisplay::staticMetaObject = {
    { &::rviz::MessageFilterDisplay< ::cartographer_ros_msgs::SubmapList>::staticMetaObject, qt_meta_stringdata_cartographer_rviz__SubmapsDisplay,
      qt_meta_data_cartographer_rviz__SubmapsDisplay, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &cartographer_rviz::SubmapsDisplay::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *cartographer_rviz::SubmapsDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *cartographer_rviz::SubmapsDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_cartographer_rviz__SubmapsDisplay))
        return static_cast<void*>(const_cast< SubmapsDisplay*>(this));
    typedef ::rviz::MessageFilterDisplay< ::cartographer_ros_msgs::SubmapList> QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int cartographer_rviz::SubmapsDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef ::rviz::MessageFilterDisplay< ::cartographer_ros_msgs::SubmapList> QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
