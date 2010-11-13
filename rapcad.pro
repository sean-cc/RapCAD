#-------------------------------------------------------------------------
#    RapCAD - Rapid prototyping CAD IDE (www.rapcad.org)
#    Copyright (C) 2010  Giles Bathgate
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------

#-------------------------------------------------
#
# Project created by QtCreator 2010-10-25T09:57:37
#
#-------------------------------------------------

QT       += core gui opengl

TARGET = rapcad
TEMPLATE = app
INCLUDEPATH += src
QMAKE_YACC = bison
QMAKE_DEL_FILE = rm -f
LEXSOURCES += src/lexer.l
YACCSOURCES += src/parser.y

SOURCES += src/main.cpp\
        src/mainwindow.cpp \
    src/module.cpp \
    src/syntaxtreebuilder.cpp \
    src/parameter.cpp \
    src/expression.cpp \
    src/binaryexpression.cpp \
    src/literal.cpp \
    src/variable.cpp \
    src/declaration.cpp \
    src/context.cpp \
    src/modulecontext.cpp \
    src/dependencybuilder.cpp

HEADERS  += src/mainwindow.h \
    src/module.h \
    src/syntaxtreebuilder.h \
    src/parameter.h \
    src/expression.h \
    src/binaryexpression.h \
    src/literal.h \
    src/variable.h \
    src/declaration.h \
    src/context.h \
    src/modulecontext.h \
    src/abstractsyntaxtreebuilder.h \
    src/dependencybuilder.h

FORMS    += src/mainwindow.ui   

OTHER_FILES += \
    COPYING
