# Dijkstra's algorithm 

We are instrested in solving the *single-source shortest-paths problem* in a given $G = (V, E)$ on a wieghted **directed-graph**, with the following constraint that the weights to be *nonnegative* on every edge. 
$$w(u, v) \geq 0 \quad \text{for each edge } (u, v) \in E$$ 

Dijkstra's algorithm can be viewed as a enhanced implementation of *breadth=first search* to graphs with weights. 

```bash
INITIALIZE-SINGLE-SOURCE(G, s)
S = ∅
Q = ∅
for each vertex u in G.V
    INSERT(Q, u)
while Q <> ∅
    u = EXTRACT-MIN(Q)
    S = S ∪ {u}
    for each vertex v in G.Adj[u]
        RELAX(u, v, w)
        if the call of RELAX decreased v.d 
            DECREASE-KEY(Q, v, v,d)
```