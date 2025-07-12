# This module is not used at the moment

from luaparser import ast, astnodes

def get_lua_table_from_ast_node(node: astnodes.Table):
    result = []

    for field in node.fields:
        result.append((
            get_lua_value_from_ast_node(field.key),
            get_lua_value_from_ast_node(field.value),
            field.comments[-1].s if field.comments else None
        ))

    return result

def get_lua_value_from_ast_node(node: astnodes.Node):
    if isinstance(node, astnodes.String):
        return node.s.replace('\\"', '"').replace("\\'", "'")
    elif isinstance(node, astnodes.Number):
        return node.n
    elif isinstance(node, astnodes.Name):
        return f'@{node.id}'
    elif isinstance(node, astnodes.Nil):
        return None
    elif isinstance(node, astnodes.Table):
        return get_lua_table_from_ast_node(node)

    raise Exception('Unsupported node type', node)

def get_lua_value_from_lua_file(filename: str, target_lua_var: str):
    with open(filename, mode='r', encoding='utf-8') as f:
        tree = ast.parse(f.read())
        for node in ast.walk(tree):
            if isinstance(node, astnodes.Assign) and node.values:
                value = node.values[0]
                if isinstance(value, astnodes.Table) and node.targets:
                    target = node.targets[0]

                    lua_var = None
                    if isinstance(target, astnodes.Index):
                        lua_var = f'{target.value.id}.{target.idx.id}'
                    elif isinstance(target, astnodes.Name):
                        lua_var = target.id

                    if lua_var == target_lua_var:
                        return get_lua_value_from_ast_node(value)
