/*
 *   RapCAD - Rapid prototyping CAD IDE (www.rapcad.org)
 *   Copyright (C) 2010  Giles Bathgate
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "variable.h"

Variable::Variable()
{
	type=Variable::Var;
}

Variable::~Variable()
{
}

QString Variable::getName()
{
	return this->name;
}

void Variable::setName(QString name)
{
	this->name = name;
}

void Variable::setType(Type_e type)
{
	this->type = type;
}

Variable::Type_e Variable::getType()
{
	return this->type;
}

void Variable::accept(Visitor& v)
{
	v.visit(this);
}